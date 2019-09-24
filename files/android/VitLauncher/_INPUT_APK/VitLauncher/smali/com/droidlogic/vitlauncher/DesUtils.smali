.class public Lcom/droidlogic/vitlauncher/DesUtils;
.super Ljava/lang/Object;
.source "DesUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidlogic/vitlauncher/DesUtils$CommandRun;
    }
.end annotation


# instance fields
.field private decryptCipher:Ljavax/crypto/Cipher;

.field private encryptCipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "gjaoun"

    invoke-direct {p0, v0}, Lcom/droidlogic/vitlauncher/DesUtils;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/DesUtils;->encryptCipher:Ljavax/crypto/Cipher;

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/DesUtils;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/droidlogic/vitlauncher/DesUtils;->getKey([B)Ljava/security/Key;

    move-result-object v0

    const-string/jumbo v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/DesUtils;->encryptCipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/DesUtils;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string/jumbo v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/droidlogic/vitlauncher/DesUtils;->decryptCipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/droidlogic/vitlauncher/DesUtils;->decryptCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public static GetCpuInfo(Lcom/droidlogic/vitlauncher/DesUtils;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    new-instance v1, Lcom/droidlogic/vitlauncher/DesUtils$CommandRun;

    invoke-direct {v1}, Lcom/droidlogic/vitlauncher/DesUtils$CommandRun;-><init>()V

    const/4 v5, 0x2

    :try_start_0
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "/system/bin/cat"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const-string/jumbo v5, "/proc/cpuinfo"

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const-string/jumbo v5, "/system/bin/"

    invoke-virtual {v1, v0, v5}, Lcom/droidlogic/vitlauncher/DesUtils$CommandRun;->run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/droidlogic/vitlauncher/DesUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static byteArr2HexStr([B)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x10

    array-length v1, p0

    new-instance v3, Ljava/lang/StringBuffer;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-byte v2, p0, v0

    :goto_1
    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    goto :goto_1

    :cond_0
    if-ge v2, v5, :cond_1

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getKey([B)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v3, 0x8

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-byte v3, p1, v1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "DES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method public static hexStr2ByteArr(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    div-int/lit8 v5, v3, 0x2

    new-array v1, v5, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([BII)V

    div-int/lit8 v5, v2, 0x2

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static isAmlogicChip()Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "7c0f13b6d5986e65"

    :try_start_0
    new-instance v1, Lcom/droidlogic/vitlauncher/DesUtils;

    const-string/jumbo v3, "gjaoun"

    invoke-direct {v1, v3}, Lcom/droidlogic/vitlauncher/DesUtils;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/droidlogic/vitlauncher/DesUtils;->GetCpuInfo(Lcom/droidlogic/vitlauncher/DesUtils;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/droidlogic/vitlauncher/DesUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/droidlogic/vitlauncher/DesUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    return v5

    :catch_0
    move-exception v2

    return v5
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/droidlogic/vitlauncher/DesUtils;->hexStr2ByteArr(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/droidlogic/vitlauncher/DesUtils;->decrypt([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public decrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/DesUtils;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/droidlogic/vitlauncher/DesUtils;->encrypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/droidlogic/vitlauncher/DesUtils;->byteArr2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/droidlogic/vitlauncher/DesUtils;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
