.class public final Lyads/em4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/of6;


# instance fields
.field public final a:Lyads/nf6;


# direct methods
.method public constructor <init>(Lyads/nf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/em4;->a:Lyads/nf6;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lyads/em4;->a:Lyads/nf6;

    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
