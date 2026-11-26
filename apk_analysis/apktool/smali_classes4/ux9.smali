.class public final synthetic Lux9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Lcom/my/tracker/obfuscated/i0$a;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/i0$a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lux9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lux9;->c:Lcom/my/tracker/obfuscated/i0$a;

    iput-object p3, p0, Lux9;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lux9;->c:Lcom/my/tracker/obfuscated/i0$a;

    iget-object v1, p0, Lux9;->d:Ljava/util/List;

    iget-object p0, p0, Lux9;->b:Lcom/my/tracker/obfuscated/i0;

    invoke-static {p0, v0, v1}, Lcom/my/tracker/obfuscated/i0;->g(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/i0$a;Ljava/util/List;)V

    return-void
.end method
