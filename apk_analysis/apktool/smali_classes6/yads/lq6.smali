.class public final Lyads/lq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lyads/nq6;


# direct methods
.method public constructor <init>(Lyads/nq6;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyads/lq6;->d:Lyads/nq6;

    iput-object p2, p0, Lyads/lq6;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lyads/lq6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lyads/lq6;->d:Lyads/nq6;

    iget-object v1, p0, Lyads/lq6;->b:Landroid/webkit/WebView;

    iget-object p0, p0, Lyads/lq6;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
