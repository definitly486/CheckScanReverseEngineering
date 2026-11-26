.class public final Lyads/pm;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final b:Lyads/vz2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/vz2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p2, p0, Lyads/pm;->b:Lyads/vz2;

    return-void
.end method

.method public constructor <init>(Lyads/lm;Lyads/vz2;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lyads/pm;->b:Lyads/vz2;

    return-void
.end method
