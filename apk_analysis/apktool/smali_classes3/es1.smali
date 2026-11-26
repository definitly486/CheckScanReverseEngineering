.class public final synthetic Les1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lu83$a;

.field public final synthetic c:Lzk1;


# direct methods
.method public synthetic constructor <init>(Lu83$a;Lzk1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Les1;->b:Lu83$a;

    iput-object p2, p0, Les1;->c:Lzk1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lb36;

    iget-object v1, p0, Les1;->b:Lu83$a;

    iget-object p0, p0, Les1;->c:Lzk1;

    invoke-direct {v0, v1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
