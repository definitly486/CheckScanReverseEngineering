.class public interface abstract Landroidx/compose/ui/Alignment$Vertical;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Vertical"
.end annotation


# virtual methods
.method public abstract align(II)I
.end method

.method public plus(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Alignment;
    .locals 1

    new-instance v0, Landroidx/compose/ui/CombinedAlignment;

    invoke-direct {v0, p1, p0}, Landroidx/compose/ui/CombinedAlignment;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V

    return-object v0
.end method
