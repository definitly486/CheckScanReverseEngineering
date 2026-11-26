.class public final synthetic Lf3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/ne6;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(IJLyads/ne6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lf3a;->b:Lyads/ne6;

    iput p1, p0, Lf3a;->c:I

    iput-wide p2, p0, Lf3a;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lf3a;->c:I

    iget-wide v1, p0, Lf3a;->d:J

    iget-object p0, p0, Lf3a;->b:Lyads/ne6;

    invoke-virtual {p0, v0, v1, v2}, Lyads/ne6;->b(IJ)V

    return-void
.end method
