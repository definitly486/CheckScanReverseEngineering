.class public final Lpn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Lx16;

.field public final d:Lzt0;

.field public final e:Lwt8;


# direct methods
.method public constructor <init>(Landroid/view/View;Laz4;Lqb6;Lx16;Lzt0;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpn5;->b:Landroid/view/View;

    iput-object p4, p0, Lpn5;->c:Lx16;

    iput-object p5, p0, Lpn5;->d:Lzt0;

    new-instance p1, Lwt8;

    invoke-direct {p1, p2, p3}, Lwt8;-><init>(Laz4;Lqb6;)V

    iput-object p1, p0, Lpn5;->e:Lwt8;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    iget-object v0, p0, Lpn5;->c:Lx16;

    invoke-virtual {v0}, Lx16;->invoke()Ljava/lang/Object;

    new-instance v0, Led0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Led0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lpn5;->e:Lwt8;

    invoke-virtual {p0, v0}, Lwt8;->b(Led0;)V

    return-void
.end method
