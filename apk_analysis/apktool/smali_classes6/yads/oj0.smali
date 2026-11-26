.class public final Lyads/oj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lyads/mm;

.field public final b:Lyads/lk5;

.field public final c:Lyads/po5;


# direct methods
.method public varargs constructor <init>([Lyads/mm;)V
    .locals 5

    new-instance v0, Lyads/lk5;

    invoke-direct {v0}, Lyads/lk5;-><init>()V

    new-instance v1, Lyads/po5;

    invoke-direct {v1}, Lyads/po5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lyads/mm;

    iput-object v2, p0, Lyads/oj0;->a:[Lyads/mm;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lyads/oj0;->b:Lyads/lk5;

    iput-object v1, p0, Lyads/oj0;->c:Lyads/po5;

    array-length p0, p1

    aput-object v0, v2, p0

    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    aput-object v1, v2, p0

    return-void
.end method
