.class public final Lcom/warefly/checkscan/presentation/flows/desktop/view/c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Llj1<",
        "Luf3;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/flows/desktop/view/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/c;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Luf3;

    sget-object p2, Loe0;->b:Lba8;

    const-class v0, Lo87;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo87;

    invoke-direct {p0, p1}, Luf3;-><init>(Lo87;)V

    new-instance p1, Llj1;

    invoke-direct {p1, p0}, Llj1;-><init>(Lo87;)V

    return-object p1
.end method
