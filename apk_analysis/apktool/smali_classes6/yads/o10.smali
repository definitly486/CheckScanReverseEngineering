.class public final Lyads/o10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lyads/m2;

.field public final b:Lyads/jd0;


# direct methods
.method public constructor <init>(Lyads/m2;Lyads/jd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/o10;->a:Lyads/m2;

    iput-object p2, p0, Lyads/o10;->b:Lyads/jd0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lyads/o10;->a:Lyads/m2;

    invoke-virtual {p1}, Lyads/m2;->e()V

    iget-object p0, p0, Lyads/o10;->b:Lyads/jd0;

    sget-object p1, Lyads/id0;->c:Lyads/id0;

    invoke-virtual {p0, p1}, Lyads/jd0;->a(Lyads/id0;)V

    return-void
.end method
