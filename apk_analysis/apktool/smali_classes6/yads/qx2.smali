.class public final Lyads/qx2;
.super Lyads/bt1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lnl3;


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0

    iput-object p1, p0, Lyads/qx2;->b:Lnl3;

    invoke-direct {p0}, Lyads/bt1;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lyads/qx2;->b:Lnl3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
