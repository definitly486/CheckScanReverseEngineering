.class public final synthetic Lym9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/my/tracker/obfuscated/c3;

.field public final synthetic d:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic e:Lcom/my/tracker/obfuscated/a2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/a2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lym9;->b:Landroid/content/Context;

    iput-object p2, p0, Lym9;->c:Lcom/my/tracker/obfuscated/c3;

    iput-object p3, p0, Lym9;->d:Lcom/my/tracker/obfuscated/i0;

    iput-object p4, p0, Lym9;->e:Lcom/my/tracker/obfuscated/a2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lym9;->d:Lcom/my/tracker/obfuscated/i0;

    iget-object v1, p0, Lym9;->e:Lcom/my/tracker/obfuscated/a2;

    iget-object v2, p0, Lym9;->b:Landroid/content/Context;

    iget-object p0, p0, Lym9;->c:Lcom/my/tracker/obfuscated/c3;

    invoke-static {v2, p0, v0, v1}, Lcom/my/tracker/obfuscated/a1;->b(Landroid/content/Context;Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/a2;)V

    return-void
.end method
