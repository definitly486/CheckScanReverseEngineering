.class public final Lyads/zy;
.super Lyads/xy;
.source "SourceFile"


# static fields
.field public static final b:Lyads/zy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/zy;

    invoke-direct {v0}, Lyads/zy;-><init>()V

    sput-object v0, Lyads/zy;->b:Lyads/zy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/xy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "CharMatcher.none()"

    return-object p0
.end method
