.class public final Lcom/my/tracker/obfuscated/w0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/tracker/obfuscated/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/Object;

.field c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/my/tracker/obfuscated/w0$b;
    .locals 1

    new-instance v0, Lcom/my/tracker/obfuscated/w0$b;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/w0$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/w0$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/w0$b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/my/tracker/obfuscated/w0$b;->a:Z

    return p0
.end method
