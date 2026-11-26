.class public final Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/Serializer<",
        "Lcom/google/firebase/sessions/settings/SessionConfigs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;

.field private static final defaultValue:Lcom/google/firebase/sessions/settings/SessionConfigs;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;

    invoke-direct {v0}, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->INSTANCE:Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;

    new-instance v1, Lcom/google/firebase/sessions/settings/SessionConfigs;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/sessions/settings/SessionConfigs;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    sput-object v1, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->defaultValue:Lcom/google/firebase/sessions/settings/SessionConfigs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultValue()Lcom/google/firebase/sessions/settings/SessionConfigs;
    .locals 0

    .line 5
    sget-object p0, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->defaultValue:Lcom/google/firebase/sessions/settings/SessionConfigs;

    return-object p0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->getDefaultValue()Lcom/google/firebase/sessions/settings/SessionConfigs;

    move-result-object p0

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Le02<",
            "-",
            "Lcom/google/firebase/sessions/settings/SessionConfigs;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lxb4;->d:Lxb4$a;

    invoke-static {p1}, Lex0;->d(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lra8;->t([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/google/firebase/sessions/settings/SessionConfigs;->Companion:Lcom/google/firebase/sessions/settings/SessionConfigs$Companion;

    invoke-virtual {p2}, Lcom/google/firebase/sessions/settings/SessionConfigs$Companion;->serializer()Ldf4;

    move-result-object p2

    check-cast p2, Lxl2;

    invoke-virtual {p0, p2, p1}, Lxb4;->a(Lxl2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/sessions/settings/SessionConfigs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/datastore/core/CorruptionException;

    const-string p2, "Cannot parse session configs"

    invoke-direct {p1, p2, p0}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeTo(Lcom/google/firebase/sessions/settings/SessionConfigs;Ljava/io/OutputStream;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/settings/SessionConfigs;",
            "Ljava/io/OutputStream;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lxb4;->d:Lxb4$a;

    sget-object p3, Lcom/google/firebase/sessions/settings/SessionConfigs;->Companion:Lcom/google/firebase/sessions/settings/SessionConfigs$Companion;

    invoke-virtual {p3}, Lcom/google/firebase/sessions/settings/SessionConfigs$Companion;->serializer()Ldf4;

    move-result-object p3

    check-cast p3, Lxp7;

    invoke-virtual {p0, p3, p1}, Lxb4;->b(Lxp7;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Le02;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/google/firebase/sessions/settings/SessionConfigs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->writeTo(Lcom/google/firebase/sessions/settings/SessionConfigs;Ljava/io/OutputStream;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
