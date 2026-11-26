.class public final Lhj1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lhj1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhj1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lhj1;->f:Lhj1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
