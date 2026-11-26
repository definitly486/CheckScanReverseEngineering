.class public final synthetic Ls44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lt44;

.field public final synthetic c:Lhc0$b;


# direct methods
.method public synthetic constructor <init>(Lt44;Lhc0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls44;->b:Lt44;

    iput-object p2, p0, Ls44;->c:Lhc0$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ls44;->c:Lhc0$b;

    iget-object p0, p0, Ls44;->b:Lt44;

    iget-object p0, p0, Lt44;->i:Lt44$b;

    invoke-interface {p0, p1}, Lt44$b;->onSpecialItemClick(Lhc0$b;)V

    return-void
.end method
