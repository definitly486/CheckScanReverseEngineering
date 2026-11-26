.class public final Lyads/yw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zw;


# instance fields
.field public final a:Ljavax/crypto/Cipher;

.field public final b:Ljavax/crypto/spec/SecretKeySpec;

.field public final c:Lyads/ul;

.field public d:Z

.field public e:Lyads/k95;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/yw;->a:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lyads/yw;->b:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v0, Lyads/ul;

    invoke-direct {v0, p1}, Lyads/ul;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lyads/yw;->c:Lyads/ul;

    return-void
.end method

.method public static a(Lyads/ww;I)I
    .locals 4

    .line 222
    iget v0, p0, Lyads/ww;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-object v1, p0, Lyads/ww;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 224
    iget-object p0, p0, Lyads/ww;->e:Lyads/fk0;

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 225
    invoke-static {p0}, Lyads/i60;->a(Lyads/i60;)J

    move-result-wide p0

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v2, p0, v0

    xor-long/2addr p0, v2

    long-to-int p0, p0

    add-int/2addr v1, p0

    return v1

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 226
    invoke-virtual {p0}, Lyads/fk0;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public static a(ILjava/io/DataInputStream;)Lyads/ww;
    .locals 4

    .line 227
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 228
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ge p0, v2, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p0

    .line 230
    new-instance v2, Lyads/j60;

    invoke-direct {v2}, Lyads/j60;-><init>()V

    .line 231
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 232
    iget-object p1, v2, Lyads/j60;->a:Ljava/util/HashMap;

    const-string v3, "exo_len"

    invoke-virtual {p1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object p0, v2, Lyads/j60;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    sget-object p0, Lyads/fk0;->c:Lyads/fk0;

    invoke-virtual {p0, v2}, Lyads/fk0;->a(Lyads/j60;)Lyads/fk0;

    move-result-object p0

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {p1}, Lyads/ax;->a(Ljava/io/DataInputStream;)Lyads/fk0;

    move-result-object p0

    .line 236
    :goto_0
    new-instance p1, Lyads/ww;

    invoke-direct {p1, v0, v1, p0}, Lyads/ww;-><init>(ILjava/lang/String;Lyads/fk0;)V

    return-object p1
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 217
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 1

    .line 218
    iget-boolean v0, p0, Lyads/yw;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0, p1}, Lyads/yw;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 10

    iget-boolean v0, p0, Lyads/yw;->d:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lyads/yw;->c:Lyads/ul;

    iget-object v1, v0, Lyads/ul;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lyads/ul;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lyads/yw;->c:Lyads/ul;

    invoke-virtual {v2}, Lyads/ul;->a()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_9

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    iget-object v4, p0, Lyads/yw;->a:Ljavax/crypto/Cipher;

    if-nez v4, :cond_3

    goto/16 :goto_6

    :cond_3
    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lyads/yw;->a:Ljavax/crypto/Cipher;

    iget-object v7, p0, Lyads/yw;->b:Ljavax/crypto/spec/SecretKeySpec;

    sget v8, Lyads/u56;->a:I

    invoke-virtual {v4, v3, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljavax/crypto/CipherInputStream;

    iget-object v6, p0, Lyads/yw;->a:Ljavax/crypto/Cipher;

    invoke-direct {v4, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_7

    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    move v6, v4

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-static {v0, v2}, Lyads/yw;->a(ILjava/io/DataInputStream;)Lyads/ww;

    move-result-object v7

    iget-object v8, v7, Lyads/ww;->b:Ljava/lang/String;

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, v7, Lyads/ww;->a:I

    iget-object v9, v7, Lyads/ww;->b:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v7, v0}, Lyads/yw;->a(Lyads/ww;I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    if-ne v0, v6, :cond_8

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v2}, Lyads/u56;->a(Ljava/io/Closeable;)V

    return-void

    :cond_8
    :goto_5
    invoke-static {v2}, Lyads/u56;->a(Ljava/io/Closeable;)V

    goto :goto_9

    :catch_2
    move-object v0, v2

    goto :goto_8

    :cond_9
    :goto_6
    invoke-static {v2}, Lyads/u56;->a(Ljava/io/Closeable;)V

    goto :goto_9

    :catchall_1
    move-exception p0

    :goto_7
    if-eqz v0, :cond_a

    invoke-static {v0}, Lyads/u56;->a(Ljava/io/Closeable;)V

    :cond_a
    throw p0

    :catch_3
    :goto_8
    if-eqz v0, :cond_b

    invoke-static {v0}, Lyads/u56;->a(Ljava/io/Closeable;)V

    :cond_b
    :goto_9
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lyads/yw;->c:Lyads/ul;

    iget-object p1, p0, Lyads/ul;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p0, p0, Lyads/ul;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_c
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/ww;)V
    .locals 0

    const/4 p1, 0x1

    .line 220
    iput-boolean p1, p0, Lyads/yw;->d:Z

    return-void
.end method

.method public final a(Lyads/ww;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lyads/yw;->d:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 214
    iget-object p0, p0, Lyads/yw;->c:Lyads/ul;

    .line 215
    iget-object v0, p0, Lyads/ul;->a:Ljava/io/File;

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lyads/ul;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b()V
    .locals 1

    .line 163
    iget-object p0, p0, Lyads/yw;->c:Lyads/ul;

    .line 164
    iget-object v0, p0, Lyads/ul;->a:Ljava/io/File;

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 166
    iget-object p0, p0, Lyads/ul;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final b(Ljava/util/HashMap;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lyads/yw;->c:Lyads/ul;

    invoke-virtual {v0}, Lyads/ul;->b()Lyads/tl;

    move-result-object v0

    iget-object v1, p0, Lyads/yw;->e:Lyads/k95;

    if-nez v1, :cond_0

    new-instance v1, Lyads/k95;

    invoke-direct {v1, v0}, Lyads/k95;-><init>(Lyads/tl;)V

    iput-object v1, p0, Lyads/yw;->e:Lyads/k95;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lyads/k95;->a(Ljava/io/OutputStream;)V

    :goto_0
    iget-object v0, p0, Lyads/yw;->e:Lyads/k95;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ww;

    iget v5, v4, Lyads/ww;->a:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, v4, Lyads/ww;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v5, v4, Lyads/ww;->e:Lyads/fk0;

    iget-object v5, v5, Lyads/fk0;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v7, v6

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-static {v4, v0}, Lyads/yw;->a(Lyads/ww;I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lyads/yw;->c:Lyads/ul;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p1, Lyads/ul;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget p1, Lyads/u56;->a:I

    iput-boolean v2, p0, Lyads/yw;->d:Z

    return-void

    :catchall_1
    move-exception p0

    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lyads/u56;->a(Ljava/io/Closeable;)V

    throw p0
.end method
