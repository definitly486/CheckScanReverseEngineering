.class public final synthetic Li7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lxl3;


# instance fields
.field public final synthetic b:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;)V
    .locals 0

    iput-object p1, p0, Li7;->b:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Li7;->b:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Li7;->b:Lnl3;

    invoke-static {p0, p1}, Landroidx/activity/result/ActivityResultCallerKt;->a(Lnl3;Ljava/lang/Object;)V

    return-void
.end method
