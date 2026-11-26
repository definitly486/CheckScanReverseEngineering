.class public abstract Lpd4;
.super Loc4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpd4$a;
    }
.end annotation

.annotation runtime Lup7;
    with = Lsd4;
.end annotation


# static fields
.field public static final Companion:Lpd4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpd4$a;

    invoke-direct {v0}, Lpd4$a;-><init>()V

    sput-object v0, Lpd4;->Companion:Lpd4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loc4;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lpd4;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
