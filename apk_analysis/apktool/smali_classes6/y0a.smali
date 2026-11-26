.class public final synthetic Ly0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final synthetic b:Lyads/kk5;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lyads/kk5;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0a;->b:Lyads/kk5;

    iput-object p2, p0, Ly0a;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Ly0a;->b:Lyads/kk5;

    iget-object p0, p0, Ly0a;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lyads/kk5;->a(Lyads/kk5;Landroid/view/View;)V

    return-void
.end method
