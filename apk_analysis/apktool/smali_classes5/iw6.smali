.class public final Liw6;
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
        "Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Liw6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Liw6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Liw6;->f:Liw6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;

    move-result-object p0

    return-object p0
.end method
