.class public final synthetic Lod1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lrd1;

.field public final synthetic c:Llh1;


# direct methods
.method public synthetic constructor <init>(Lrd1;Llh1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod1;->b:Lrd1;

    iput-object p2, p0, Lod1;->c:Llh1;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lod1;->b:Lrd1;

    iget-object p1, p1, Lrd1;->c:Lyh1;

    iget-object p0, p0, Lod1;->c:Llh1;

    iget-object p0, p0, Llh1;->a:Lhd1;

    invoke-virtual {p0}, Lhd1;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lhd1;->h()Llu7;

    move-result-object v1

    invoke-virtual {v1}, Llu7;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lhd1;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lhd1;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lyh1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
