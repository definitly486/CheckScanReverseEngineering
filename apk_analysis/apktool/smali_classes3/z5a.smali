.class public final synthetic Lz5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/my/tracker/obfuscated/q0$b;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5a;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lz5a;->c:Ljava/lang/String;

    iput-object p3, p0, Lz5a;->d:Lcom/my/tracker/obfuscated/q0$b;

    iput-object p4, p0, Lz5a;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lz5a;->d:Lcom/my/tracker/obfuscated/q0$b;

    iget-object v1, p0, Lz5a;->e:Landroid/content/Context;

    iget-object v2, p0, Lz5a;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Lz5a;->c:Ljava/lang/String;

    invoke-static {v2, p0, v0, v1}, Lcom/my/tracker/obfuscated/q0;->b(Ljava/util/ArrayList;Ljava/lang/String;Lcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V

    return-void
.end method
