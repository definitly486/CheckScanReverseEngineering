.class public final synthetic Landroidx/work/impl/constraints/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lll3;


# direct methods
.method public synthetic constructor <init>(Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/c;->b:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/constraints/c;->b:Lll3;

    invoke-static {p0}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->g(Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
