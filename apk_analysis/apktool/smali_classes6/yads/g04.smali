.class public final Lyads/g04;
.super Lyads/f04;
.source "SourceFile"


# static fields
.field public static final h:Lyads/g04;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/e04;

    invoke-direct {v0}, Lyads/e04;-><init>()V

    new-instance v1, Lyads/g04;

    invoke-direct {v1, v0}, Lyads/g04;-><init>(Lyads/e04;)V

    sput-object v1, Lyads/g04;->h:Lyads/g04;

    return-void
.end method

.method public constructor <init>(Lyads/e04;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/f04;-><init>(Lyads/e04;)V

    return-void
.end method
