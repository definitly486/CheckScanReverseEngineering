.class public final synthetic Lu8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/f2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu8a;->b:Ljava/lang/String;

    iput-object p1, p0, Lu8a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu8a;->b:Ljava/lang/String;

    iget-object p0, p0, Lu8a;->c:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/my/tracker/obfuscated/t2;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/my/tracker/obfuscated/n2;

    move-result-object p0

    return-object p0
.end method
