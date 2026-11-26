.class public final synthetic Lm1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Lyads/lg5;


# direct methods
.method public synthetic constructor <init>(Lyads/lg5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1a;->b:Lyads/lg5;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 0

    iget-object p0, p0, Lm1a;->b:Lyads/lg5;

    invoke-static {p0}, Lyads/lg5;->a(Lyads/lg5;)Z

    move-result p0

    return p0
.end method
