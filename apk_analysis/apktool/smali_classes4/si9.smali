.class public final Lsi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyv5;


# instance fields
.field public final synthetic a:Lwl7;

.field public final synthetic b:Landroid/view/Window;

.field public final synthetic c:Lnd6;


# direct methods
.method public constructor <init>(Lwl7;Landroid/view/Window;Lnd6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsi9;->a:Lwl7;

    iput-object p2, p0, Lsi9;->b:Landroid/view/Window;

    iput-object p3, p0, Lsi9;->c:Lnd6;

    return-void
.end method


# virtual methods
.method public final onContentChanged()V
    .locals 1

    iget-object v0, p0, Lsi9;->a:Lwl7;

    iget-object v0, v0, Lwl7;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsi9;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lsi9;->c:Lnd6;

    invoke-virtual {p0, v0}, Lnd6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
