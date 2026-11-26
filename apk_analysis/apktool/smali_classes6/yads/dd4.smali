.class public final Lyads/dd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut5;
.implements Ljava/io/Serializable;


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const-string v1, "expectedValuesPerKey"

    invoke-static {v0, v1}, Lyads/h20;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lyads/dd4;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget p0, p0, Lyads/dd4;->b:I

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
