.class public final synthetic Lvea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lyads/v0;

.field public final synthetic c:Lyads/nh0;


# direct methods
.method public synthetic constructor <init>(Lyads/v0;Lyads/nh0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvea;->b:Lyads/v0;

    iput-object p2, p0, Lvea;->c:Lyads/nh0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lvea;->b:Lyads/v0;

    iget-object p0, p0, Lvea;->c:Lyads/nh0;

    invoke-static {v0, p0, p1}, Lyads/v0;->a(Lyads/v0;Lyads/nh0;Landroid/view/View;)V

    return-void
.end method
