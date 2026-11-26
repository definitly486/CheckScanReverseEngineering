.class public final synthetic Landroidx/paging/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ly74;


# direct methods
.method public synthetic constructor <init>(Ly74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/s;->b:Ly74;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/paging/s;->b:Ly74;

    check-cast p1, Landroidx/paging/TransformablePage;

    invoke-static {p0, p1}, Landroidx/paging/SeparatorState;->a(Ly74;Landroidx/paging/TransformablePage;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
