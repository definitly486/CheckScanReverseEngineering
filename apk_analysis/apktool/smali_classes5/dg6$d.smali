.class public final Ldg6$d;
.super Ldg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldg6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Ldg6$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldg6$d;

    invoke-direct {v0}, Ldg6;-><init>()V

    sput-object v0, Ldg6$d;->a:Ldg6$d;

    return-void
.end method
