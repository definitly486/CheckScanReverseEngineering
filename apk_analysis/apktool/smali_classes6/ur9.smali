.class public final synthetic Lur9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lyads/cm4;

.field public final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lyads/cm4;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lur9;->b:Lyads/cm4;

    iput-object p2, p0, Lur9;->c:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lur9;->b:Lyads/cm4;

    iget-object p0, p0, Lur9;->c:Landroid/widget/CheckBox;

    invoke-static {v0, p0, p1}, Lyads/cm4;->a(Lyads/cm4;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
