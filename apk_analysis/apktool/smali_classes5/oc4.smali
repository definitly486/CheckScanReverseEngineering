.class public abstract Loc4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc4$a;
    }
.end annotation

.annotation runtime Lup7;
    with = Luc4;
.end annotation


# static fields
.field public static final Companion:Loc4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loc4$a;

    invoke-direct {v0}, Loc4$a;-><init>()V

    sput-object v0, Loc4;->Companion:Loc4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
