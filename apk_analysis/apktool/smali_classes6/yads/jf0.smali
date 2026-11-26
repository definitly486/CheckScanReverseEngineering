.class public final Lyads/jf0;
.super Lyads/mf0;
.source "SourceFile"


# static fields
.field public static final b:Lyads/jf0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/jf0;

    invoke-direct {v0}, Lyads/jf0;-><init>()V

    sput-object v0, Lyads/jf0;->b:Lyads/jf0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Ad Units"

    invoke-direct {p0, v0}, Lyads/mf0;-><init>(Ljava/lang/String;)V

    return-void
.end method
