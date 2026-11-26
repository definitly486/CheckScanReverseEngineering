.class final Lcom/my/tracker/obfuscated/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/d2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/obfuscated/e2$a;,
        Lcom/my/tracker/obfuscated/e2$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/my/tracker/obfuscated/h1;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/h1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/e2;->a:Lcom/my/tracker/obfuscated/h1;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/e2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/my/tracker/obfuscated/d2$a;
    .locals 2

    new-instance v0, Lcom/my/tracker/obfuscated/e2$a;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/e2;->a:Lcom/my/tracker/obfuscated/h1;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/my/tracker/obfuscated/h1;->a(Ljava/lang/String;)Lcom/my/tracker/obfuscated/h1$f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/my/tracker/obfuscated/e2$a;-><init>(Lcom/my/tracker/obfuscated/h1;Lcom/my/tracker/obfuscated/h1$f;)V

    return-object v0
.end method
