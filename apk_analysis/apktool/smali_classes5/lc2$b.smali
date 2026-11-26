.class public abstract Llc2$b;
.super Llc2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llc2$b$a;
    }
.end annotation

.annotation runtime Lup7;
    with = Li92;
.end annotation


# static fields
.field public static final Companion:Llc2$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llc2$b$a;

    invoke-direct {v0}, Llc2$b$a;-><init>()V

    sput-object v0, Llc2$b;->Companion:Llc2$b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llc2;-><init>()V

    return-void
.end method
