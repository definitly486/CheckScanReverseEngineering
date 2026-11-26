.class public final Lw79$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw79;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lll3<",
        "Landroid/content/pm/PackageManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lw79;


# direct methods
.method public constructor <init>(Lw79;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw79$a;->b:Lw79;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/PackageManager;"
        }
    .end annotation

    iget-object p0, p0, Lw79$a;->b:Lw79;

    instance-of v0, p0, Log4;

    const-class v1, Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Log4;

    invoke-interface {p0}, Log4;->getScope()Lze7;

    move-result-object p0

    invoke-static {v1, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
