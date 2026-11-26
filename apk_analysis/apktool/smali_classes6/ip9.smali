.class public final synthetic Lip9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lyads/as2;

.field public final synthetic c:Lyads/tt;


# direct methods
.method public synthetic constructor <init>(Lyads/as2;Lyads/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lip9;->b:Lyads/as2;

    iput-object p2, p0, Lip9;->c:Lyads/tt;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lip9;->b:Lyads/as2;

    iget-object p0, p0, Lip9;->c:Lyads/tt;

    invoke-static {v0, p0, p1}, Lyads/bt0;->a(Lyads/as2;Lyads/tt;Landroid/view/View;)V

    return-void
.end method
