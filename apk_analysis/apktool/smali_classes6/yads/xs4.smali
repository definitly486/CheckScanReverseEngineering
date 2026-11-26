.class public Lyads/xs4;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p3, p0, Lyads/xs4;->b:Z

    iput p4, p0, Lyads/xs4;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lyads/xs4;
    .locals 4

    new-instance v0, Lyads/xs4;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    return-object v0
.end method
