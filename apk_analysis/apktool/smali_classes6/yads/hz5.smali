.class public final Lyads/hz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mz5;


# static fields
.field public static final a:Lyads/hz5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/hz5;

    invoke-direct {v0}, Lyads/hz5;-><init>()V

    sput-object v0, Lyads/hz5;->a:Lyads/hz5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "!:"

    return-object p0
.end method
