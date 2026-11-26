.class public final synthetic Lvo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvo9;->b:I

    iput-boolean p2, p0, Lvo9;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lvo9;->c:Z

    check-cast p1, Lyads/iw4;

    iget p0, p0, Lvo9;->b:I

    invoke-static {p0, v0, p1}, Lyads/bq2;->a(IZLyads/iw4;)V

    return-void
.end method
