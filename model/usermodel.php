<?php
// model/user.model.php

// Configuration de la connexion à la base de données
function getConnexion() {
    try {
        $dsn = "mysql:host=localhost;dbname=projet;charset=utf8";
        $user = "root";
        $pass = "";
        $pdo = new PDO($dsn, $user, $pass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    } catch(PDOException $e) {
        echo "Erreur de connexion : " . $e->getMessage();
        die();
    }
}

// Récupérer tous les utilisateurs (id et nom uniquement)
function getAllUsers() {
    $pdo = getConnexion();
    $sql = "SELECT id, nom FROM users";
    try {
        $stmt = $pdo->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch(PDOException $e) {
        echo "Erreur lors de la récupération des utilisateurs : " . $e->getMessage();
        return false;
    }
}

// Récupérer un utilisateur par son ID
function getUserById($id) {
    $pdo = getConnexion();
    $sql = "SELECT * FROM users WHERE id = :id";
    try {
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    } catch(PDOException $e) {
        echo "Erreur lors de la récupération de l'utilisateur : " . $e->getMessage();
        return false;
    }
}

// Créer un nouvel utilisateur
function createUser($pseudo, $password, $email, $age, $gender, $level) {
    $pdo = getConnexion();
    $sql = "INSERT INTO ktfu_users (id_users, pseudo, password, email, gamelevel, gender, plateform_used, fav_game_type, age, id_role) VALUES (0, :pseudo, :password, :email, :gamelevel, :gender, NULL, NULL, :age, 2)";
    try {
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':pseudo', $pseudo, PDO::PARAM_STR);
        $stmt->bindParam(':password', $password, PDO::PARAM_STR);
        $stmt->bindParam(':email', $email, PDO::PARAM_STR);
        $stmt->bindParam(':gamelevel', $level, PDO::PARAM_STR);
        $stmt->bindParam(':gender', $gender, PDO::PARAM_STR);
        $stmt->bindParam(':age', $age, PDO::PARAM_STR);
        // $stmt->bindParam(':picture', $picture, PDO::PARAM_STR);
        return $stmt->execute();
    } catch(PDOException $e) {
        echo "Erreur lors de la création de l'utilisateur : " . $e->getMessage();
        return false;
    }
}

// Mettre à jour un utilisateur
function updateUser($id, $pseudo, $email, $password) {
    $pdo = getConnexion();
    $sql = "UPDATE users SET pseudo = :pseudo, email = :email, password = :password WHERE id = :id";
    try {
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->bindParam(':pseudo', $pseudo, PDO::PARAM_STR);
        $stmt->bindParam(':email', $email, PDO::PARAM_STR);
        $stmt->bindParam(':password', $password, PDO::PARAM_STR);
        return $stmt->execute();
    } catch(PDOException $e) {
        echo "Erreur lors de la mise à jour de l'utilisateur : " . $e->getMessage();
        return false;
    }
}

// Supprimer un utilisateur
function deleteUser($id) {
    $pdo = getConnexion();
    $sql = "DELETE FROM users WHERE id = :id";
    try {
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        return $stmt->execute();
    } catch(PDOException $e) {
        echo "Erreur lors de la suppression de l'utilisateur : " . $e->getMessage();
        return false;
    }
}

function getPseudo($pseudo){
    $pdo = getConnexion();

    $sql = "SELECT * FROM ktfu_users WHERE pseudo = :pseudo";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([':pseudo' => $pseudo]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    return $user;
}