.class public final Lyads/lh5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ur1;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lyads/ur1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lh5;->a:Lyads/ur1;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lyads/lh5;->c:I

    return p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/lh5;->a:Lyads/ur1;

    return-object p0
.end method
