.class public final Lyads/pp5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zy;

.field public final b:Lyads/op5;

.field public final c:I


# direct methods
.method public constructor <init>(Lyads/op5;)V
    .locals 1

    sget-object v0, Lyads/zy;->b:Lyads/zy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pp5;->b:Lyads/op5;

    iput-object v0, p0, Lyads/pp5;->a:Lyads/zy;

    const p1, 0x7fffffff

    iput p1, p0, Lyads/pp5;->c:I

    return-void
.end method
