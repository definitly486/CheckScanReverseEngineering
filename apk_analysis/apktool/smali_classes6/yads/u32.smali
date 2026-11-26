.class public final Lyads/u32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lyads/v32;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/v32;)V
    .locals 0

    iput-object p1, p0, Lyads/u32;->b:Landroid/view/View;

    iput-object p2, p0, Lyads/u32;->c:Lyads/v32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lyads/u32;->c:Lyads/v32;

    iget-object p0, p0, Lyads/v32;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
