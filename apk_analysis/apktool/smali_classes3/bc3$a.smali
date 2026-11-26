.class public final Lbc3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbc3;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lbc3;


# direct methods
.method public constructor <init>(Lbc3;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc3$a;->c:Lbc3;

    iput-object p2, p0, Lbc3$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 1

    new-instance v0, Lbc3$a$a;

    invoke-direct {v0, p0, p0}, Lbc3$a$a;-><init>(Lbc3$a;Lbc3$a;)V

    invoke-static {}, Leb9;->f()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
