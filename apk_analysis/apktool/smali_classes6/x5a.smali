.class public final synthetic Lx5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Lll3;


# direct methods
.method public synthetic constructor <init>(Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5a;->b:Lll3;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 0

    iget-object p0, p0, Lx5a;->b:Lll3;

    invoke-static {p0}, Lyads/pq4;->a(Lll3;)Z

    move-result p0

    return p0
.end method
