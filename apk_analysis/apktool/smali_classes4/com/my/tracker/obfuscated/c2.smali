.class final Lcom/my/tracker/obfuscated/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/b2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/obfuscated/c2$a;,
        Lcom/my/tracker/obfuscated/c2$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/my/tracker/obfuscated/h1;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/h1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/c2;->a:Lcom/my/tracker/obfuscated/h1;

    return-void
.end method


# virtual methods
.method public a()Lcom/my/tracker/obfuscated/b2$a;
    .locals 2

    new-instance v0, Lcom/my/tracker/obfuscated/c2$a;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/c2;->a:Lcom/my/tracker/obfuscated/h1;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1;->i()Lcom/my/tracker/obfuscated/h1$c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/my/tracker/obfuscated/c2$a;-><init>(Lcom/my/tracker/obfuscated/h1;Lcom/my/tracker/obfuscated/h1$c;)V

    return-object v0
.end method
