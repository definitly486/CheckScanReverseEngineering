.class public final synthetic Lrb2$g;
.super Lrg5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrb2;-><init>(Lec2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Ld44;

    iget-object p0, p0, Ld44;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Ld44;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Ld44;->d:Ljava/lang/Integer;

    return-void
.end method
