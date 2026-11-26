.class public final Lyads/xo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lre4;


# instance fields
.field public final b:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public constructor <init>(Landroidx/collection/SparseArrayCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xo5;->b:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lyads/yo5;

    iget-object p0, p0, Lyads/xo5;->b:Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0, p0}, Lyads/yo5;-><init>(Landroidx/collection/SparseArrayCompat;)V

    return-object v0
.end method
