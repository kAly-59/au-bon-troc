-- CreateTable
CREATE TABLE "Products" (
    "UUID" VARCHAR(36) NOT NULL,
    "Name" VARCHAR(50) NOT NULL,
    "Price" INTEGER NOT NULL,
    "Description" TEXT NOT NULL,
    "authorUUID" VARCHAR(36) NOT NULL,

    CONSTRAINT "products_uuid" PRIMARY KEY ("UUID")
);

-- CreateTable
CREATE TABLE "Users" (
    "UUID" VARCHAR(36) NOT NULL,
    "Pseudo" VARCHAR(50) NOT NULL,
    "Mail" VARCHAR(75) NOT NULL,
    "username" VARCHAR(75) NOT NULL,
    "password" VARCHAR(72) NOT NULL,

    CONSTRAINT "users_uuid" PRIMARY KEY ("UUID")
);

-- CreateIndex
CREATE UNIQUE INDEX "Products_UUID_key" ON "Products"("UUID");

-- CreateIndex
CREATE UNIQUE INDEX "Users_UUID_key" ON "Users"("UUID");

-- CreateIndex
CREATE UNIQUE INDEX "Users_Pseudo_key" ON "Users"("Pseudo");

-- CreateIndex
CREATE UNIQUE INDEX "Users_Mail_key" ON "Users"("Mail");

-- CreateIndex
CREATE UNIQUE INDEX "Users_username_key" ON "Users"("username");

-- AddForeignKey
ALTER TABLE "Products" ADD CONSTRAINT "product_author" FOREIGN KEY ("authorUUID") REFERENCES "Users"("UUID") ON DELETE RESTRICT ON UPDATE CASCADE;
