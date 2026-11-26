.class public final synthetic Lfha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lyads/x64;

.field public final synthetic c:Lyads/rh0;


# direct methods
.method public synthetic constructor <init>(Lyads/x64;Lyads/rh0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfha;->b:Lyads/x64;

    iput-object p2, p0, Lfha;->c:Lyads/rh0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lfha;->b:Lyads/x64;

    iget-object p0, p0, Lfha;->c:Lyads/rh0;

    invoke-static {v0, p0, p1}, Lyads/x64;->b(Lyads/x64;Lyads/rh0;Landroid/view/View;)V

    return-void
.end method
