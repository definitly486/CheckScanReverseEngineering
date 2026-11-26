.class public final Lv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lno5;


# static fields
.field public static final b:Lv6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv6;->b:Lv6;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Active"

    return-object p0
.end method
