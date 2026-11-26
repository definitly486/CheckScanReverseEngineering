.class public final Lyads/pa5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lyads/oa5;


# direct methods
.method public constructor <init>(Lyads/oa5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pa5;->a:Lyads/oa5;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/pa5;->a:Lyads/oa5;

    invoke-virtual {p0}, Lyads/oa5;->e()V

    return-void
.end method
