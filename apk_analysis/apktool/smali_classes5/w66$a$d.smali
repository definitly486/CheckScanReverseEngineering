.class public final Lw66$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw66$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw66$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lw66$a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw66$a$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw66$a$d;->a:Lw66$a$d;

    return-void
.end method
