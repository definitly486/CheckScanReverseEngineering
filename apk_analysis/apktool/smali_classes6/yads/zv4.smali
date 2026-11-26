.class public Lyads/zv4;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# instance fields
.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lyads/zv4;->b:I

    iput-wide p4, p0, Lyads/zv4;->c:J

    return-void
.end method
