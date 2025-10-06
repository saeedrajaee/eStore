-- CreateTable
CREATE TABLE "public"."ProductType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "ProductType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Product" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "mrp" DOUBLE PRECISION NOT NULL,
    "sellPrice" TEXT NOT NULL,
    "productTypeId" INTEGER NOT NULL,
    "currentStock" INTEGER NOT NULL,
    "rating" DOUBLE PRECISION DEFAULT 0,
    "smallSize" INTEGER NOT NULL DEFAULT 0,
    "mediumSize" INTEGER NOT NULL DEFAULT 0,
    "largeSize" INTEGER NOT NULL DEFAULT 0,
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ProductType_name_key" ON "public"."ProductType"("name");

-- AddForeignKey
ALTER TABLE "public"."Product" ADD CONSTRAINT "Product_productTypeId_fkey" FOREIGN KEY ("productTypeId") REFERENCES "public"."ProductType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
